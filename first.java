class abc
{
	private int a, b;

	 public void get(int c, int d)
	{
		a=c;
		b=d;
	}

	public int sum()
	{
		return a+b;
	}
}

class a
{
	public static void main(String 	aq[])
	{
		//abc ob1 = new abc();
		abc ob1;
		ob1=new abc();
		ob1.get(2,3);
        int d=ob1.sum();
        System.out.println(d);

		System.out.println(ob1.hashCode());
	}
}