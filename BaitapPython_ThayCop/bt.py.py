from fastapi import FastAPI
import httpx
import json

app = FastAPI()

OPENWEATHERMAP_API_KEY = "41f743d6bbdcb08f85dfd08fcba8a3ba"  
@app.get("/weather")
async def get_weather():
    city = "Cao Bang"  # Thay đổi thành tên thành phố bạn muốn lấy dữ liệu thời tiết
    api_url = f"http://api.openweathermap.org/data/2.5/weather?q={city}&appid={OPENWEATHERMAP_API_KEY}"

    async with httpx.AsyncClient() as client:
        response = await client.get(api_url)
        if response.status_code == 200:
            weather_data = response.json()
            return weather_data
        else:
            return {"error": "Failed to fetch weather data"}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
