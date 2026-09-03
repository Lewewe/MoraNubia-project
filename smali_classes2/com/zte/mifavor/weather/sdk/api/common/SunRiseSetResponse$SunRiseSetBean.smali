.class public Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse$SunRiseSetBean;
.super Lcom/zte/mifavor/weather/sdk/api/common/CityInfoBaseResponse;
.source "SunRiseSetResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SunRiseSetBean"
.end annotation


# instance fields
.field private sunrise_sunset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/zte/mifavor/weather/sdk/api/common/CityInfoBaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getSunrise_sunset()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse$SunRiseSetBean;->sunrise_sunset:Ljava/lang/String;

    return-object p0
.end method

.method public setSunrise_sunset(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/SunRiseSetResponse$SunRiseSetBean;->sunrise_sunset:Ljava/lang/String;

    return-void
.end method
