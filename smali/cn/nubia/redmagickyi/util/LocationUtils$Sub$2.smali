.class Lcn/nubia/redmagickyi/util/LocationUtils$Sub$2;
.super Ljava/lang/Object;
.source "LocationUtils$Sub.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/LocationUtils$Sub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 43
    const-string p0, "onLocationChanged"

    const-string v0, "LocationUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->access$200(DD)Landroid/location/Address;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->access$400()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "zte"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v1, "(?i)zte"

    const-string v2, "ZTE"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->access$502(Landroid/location/Address;)Landroid/location/Address;

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->access$600()V

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u5f53\u524d\u4f4d\u7f6e\u662f"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->access$400()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 46
    :cond_2
    :goto_0
    const-string/jumbo p0, "\u4f4d\u7f6e\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->access$300()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->access$700()V

    .line 62
    const-string p0, "LocationUtils"

    const-string p1, "onProviderDisabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->access$700()V

    .line 68
    const-string p0, "LocationUtils"

    const-string p1, "onProviderEnabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
