package team.jarvis.giraffe.dao;

public interface CityDao {
    void addCity(String name);
    void delCityById(Integer id);
    void updateCityById(Integer id);
    void getCityById(Integer id);
}
