.class Lcom/zte/weather/sdk/model/weather/Weathers$1;
.super Ljava/lang/Object;
.source "Weathers.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/weather/sdk/model/weather/Weathers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/zte/weather/sdk/model/weather/Weathers;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/weather/sdk/model/weather/Weathers;
    .locals 0

    .line 33
    new-instance p0, Lcom/zte/weather/sdk/model/weather/Weathers;

    invoke-direct {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/weather/sdk/model/weather/Weathers;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/zte/weather/sdk/model/weather/Weathers;
    .locals 0

    .line 37
    new-array p0, p1, [Lcom/zte/weather/sdk/model/weather/Weathers;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/zte/weather/sdk/model/weather/Weathers$1;->newArray(I)[Lcom/zte/weather/sdk/model/weather/Weathers;

    move-result-object p0

    return-object p0
.end method
