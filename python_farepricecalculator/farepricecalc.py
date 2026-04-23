def calculate_fare(km, vehicle_type, hour, rates):
    rate = rates[vehicle_type]
    fare = km * rate

    if 17 <= hour <= 20:
        fare *= 1.5

    return fare


rates = {
    "economy": 10,
    "premium": 18,
    "suv": 25
}

try:
    km = float(input("Enter distance (km): "))
    if km <= 0:
        print("Distance must be positive")

    else:
        vehicle_input = input("Enter vehicle type (Economy/Premium/SUV): ")
        vehicle_type = vehicle_input.lower()

        
        if vehicle_type not in rates:
            print("Service Not Available")

        else:
            hour = int(input("Enter hour (0-23): "))

            if hour < 0 or hour > 23:
                print("Invalid hour")

            else:
                total_fare = calculate_fare(km, vehicle_type, hour, rates)

                print("\n----- Ride Receipt -----")
                print(f"Distance: {km} km")
                print(f"Vehicle: {vehicle_input}")
                print(f"Time: {hour}")
                print(f"Total Fare: ₹{total_fare:.2f}")

except ValueError:
    print("Invalid input. Please enter correct values.")