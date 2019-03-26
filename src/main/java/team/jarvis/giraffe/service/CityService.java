package team.jarvis.giraffe.service;

public interface CityService {
    void addCity(String name);
    void delCityById(Integer id);
    void updateCityById(Integer id);
    void getCityById(Integer id);
}
