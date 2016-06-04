package com.reflect;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
  
/** 
 * 用Java反射机制来调用private方法 
 * @author WalkingDog 
 * 
 */  
  
public class Reflect {  
      
    public static void main(String[] args) throws Exception {  
          
        //直接创建对象   
        Person person = new Person();  
          
        Class personType = person.getClass();
        
        //访问私有方法   
        //getDeclaredMethod可以获取到所有方法，而getMethod只能获取public   
//        Method method = personType.getDeclaredMethod("say", String.class); 

        Method method = personType.getDeclaredMethod("say", new Class[]{String.class});
        
        Method method_getName = personType.getMethod("getName", new Class[]{});
        
        Method[] methos = personType.getMethods();
        for(int index = 0; index < methos.length; index ++){

            System.out.println(index);
            System.out.println(methos[index].getName());
        }
        
        //压制Java对访问修饰符的检查   
        method.setAccessible(true);  
          
        //调用方法;person为所在对象   
        method.invoke(person, new Object[]{"Hello World !"});  
        
          
        //访问私有属性   
        Field field = personType.getDeclaredField("name");  
          
        field.setAccessible(true);  
          
        //为属性设置值;person为所在对象   
        field.set(person, "WalkingDog");  
          
        System.out.println("The Value Of The Field is : " + person.getName());  
        

        String _name = (String)method_getName.invoke(person, null);
        System.out.println(">>>>>>>>>>>>>> " + _name);
          
    }  
}  
  
//JavaBean   
class Person{  
    private String name;  
      
    //每个JavaBean都应该实现无参构造方法   
    public Person() {}  
      
    public String getName() {  
        return name;  
    }  
  
    private void say(String message){  
        System.out.println("You want to say : " + message);  
    } 
    
    
}