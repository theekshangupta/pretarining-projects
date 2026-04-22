def calculate_fare(km, vehicle_type, hour, rates):
    rate = rates[vehicle_type]
    fare = km * rate

    # Surge pricing (5 PM to 8 PM → 17 to 20)
    if 17 <= hour <= 20:
        fare *= 1.5

    return fare



rates = {
    "Economy": 10,
    "Premium": 18,
    "SUV": 25
}

try:
    km = float(input("Enter distance (km): "))
    vehicle_type = input("Enter vehicle type (Economy/Premium/SUV): ")
    hour = int(input("Enter hour (0-23): "))

    if vehicle_type not in rates:
        print("Service Not Available")
        

    if hour < 0 or hour > 23:
        print("Invalid hour")
        

    total_fare = calculate_fare(km, vehicle_type, hour, rates)

    print("\n----- Ride Receipt -----")
    print(f"Distance: {km} km")
    print(f"Vehicle: {vehicle_type}")
    print(f"Time: {hour}")
    print(f"Total Fare: ₹{total_fare:.2f}")

except ValueError:
    print("Invalid input. Please enter correct values.")
