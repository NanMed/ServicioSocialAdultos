package objetos;

public class App{
	private int id;
	private String name;
	private String description;
	private String description2;
	private String site;
	private String sist_op;
	private int friendly;
	private double cost;
	private String language;
	private int consults;
	private int likes;
	private int id_type_u;

	public App(){

	}

	public App(int id, String name, String description, String description2, String site, String sist_op, int friendly, double cost, String language, int consults, int likes, int id_type_u){
		this.id = id;
		this.name = name;
		this.description = description;
		this.description2 = description2;
		this.site = site;
		this.sist_op = sist_op;
		this.friendly = friendly;
		this.cost = cost;
		this.language = language;
		this.consults = consults;
		this.likes = likes;
		this.id_type_u = id_type_u;
	}

}