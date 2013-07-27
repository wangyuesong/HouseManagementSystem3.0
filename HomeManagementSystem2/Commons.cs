using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
namespace HomeManagementSystem2
{
   
    public static class Commons
    {
        public static DataClasses1DataContext dc = new DataClasses1DataContext();
        public static bool doLogin(string UserEmail,string UserPassword)
        {
           
            var pe1 = dc.person.FirstOrDefault(a => a.email == UserEmail);
            if (pe1 == null)
            {
                return false;
            }
            else
            {

                var pe2 = dc.member.FirstOrDefault(a => a.person_id == pe1.person_id);

                if (pe2 == null)
                    return false;
                else
                {
                    if ((pe1.email == UserEmail) && (pe1.password == UserPassword))
                    {
                     
                        return true;
                    }
                    else
                        return false;
                }
            }
        }

        public static person findPersonByEmail(string UserEmail)    //通过Email查找person实体，为了存储在Session中
        {
            return dc.person.FirstOrDefault(a => a.email == UserEmail);
        }

        public static IQueryable findAllAgents()
        {

            var query = from p in dc.person
                        from a in dc.agent
                        where p.person_id == a.person_id
                        select new {person_id = p.person_id, name = p.names, profession = a.profession, register_date = a.register_date, trade_number = a.trade_number };
            return query;
        }

        public static string findAgentNameByAgentId(int id)    //根据经纪人的id查找经纪人的姓名
        {
            person p = dc.person.FirstOrDefault(a => a.person_id == id);
            return p.names;
        }

        public static address findCommunityByCommunityName(string name)
        {
            address a = dc.address.FirstOrDefault(d => d.community == name);
            return a;
        }

        public static bool insertOneIntoSaleHouseAndDelegate(salehouse s, @delegate d)
        {
            
            dc.salehouse.InsertOnSubmit(s);
            dc.@delegate.InsertOnSubmit(d);
            dc.SubmitChanges();
            return true;
        }

        public static void addOnePhotoToPhotos(string path,int person_id)
        {
            //dc.@delegate.FirstOrDefault(a => a.member1.person_id == person_id && a.date);
            var latest_time = dc.@delegate.Select(e => e.date).Max();
            @delegate d =  dc.@delegate.FirstOrDefault(t => t.date == latest_time && t.member1.person_id == person_id);
            
            var newPhoto = new photo
            {
                picture = path,
                house1 = d.house1
                
            };

            dc.photo.InsertOnSubmit(newPhoto);
            dc.SubmitChanges();
            //找出房屋id
        }
        public static int findHouseIdByHouse(house h)
        {
         return   dc.house.FirstOrDefault(a => (a.member == h.member) && (a.address == h.address)).house_id;
        }

        public static bool judgeAgentByAgentAccountAndPassword(string account, string password)
        {
            
            person p = dc.person.FirstOrDefault(a => (a.email == account) && (a.password == password));
            if (p == null)
                return false;
            
             agent ag =    dc.agent.FirstOrDefault(a => (a.person_id == p.person_id));

           if(ag == null)
               return false;
           else return true;
        }

       public static List<string> getLastHouseAllPhotosByPersonId(int person_id)
       {
       var latest_time = dc.@delegate.Select(e => e.date).Max();
            @delegate d =  dc.@delegate.FirstOrDefault(t => t.date == latest_time && t.member1.person_id == person_id);
            var allPhotos = from p in dc.photo where p.house == d.house select p.picture;
           List<string> photolist = allPhotos.ToList();
           return photolist;
            

       }

        public static @delegate getLastDelegateByPersonId(int person_id)
        {
          var latest_time = dc.@delegate.Select(e => e.date).Max();
            @delegate d =  dc.@delegate.FirstOrDefault(t => t.date == latest_time && t.member1.person_id == person_id);
            return d;
        }

        public static void setDelegateMessages(string message, @delegate d)
        {
            d.messages = message;
            dc.SubmitChanges();

        }

        public static string[]  getTopNCommunitiesByPrefix(string prefix, int n )
        {
           
            int count = dc.address.Where(str => str.community.Contains(prefix)).ToList().Count;
            string[] array = new string[count];
            List<address> addarray = dc.address.Where(str => str.community.Contains(prefix)).ToList();
         
                for (int i = 0; i < count; i++)
                {
                    array[i] = addarray[i].community;
                }
                return array;
               
        }

        public static bool judgeCommunityNameAvailable(string name)
        {
          var p =  dc.address.FirstOrDefault(a => a.community == name);
          if (p == null)
              return false;
          else
              return true;
        }

        public static string[] getCommunityInformationByName(string name)
        {
            var p = dc.address.FirstOrDefault(a => a.community == name);
            string[] t = new string[3];
            t[0] = p.city;
            t[1] = p.area;
            t[2] = p.street;
            return t;
        }
    }
}