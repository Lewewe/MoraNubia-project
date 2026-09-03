.class public Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;
.super Ljava/lang/Object;
.source "DialyForecastAbroadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayBean"
.end annotation


# instance fields
.field private humid:I

.field private icon:Ljava/lang/String;

.field private pop:I

.field private wDir:I

.field private wDirText:Ljava/lang/String;

.field private wSpeed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/zte/mifavor/weather/sdk/api/common/DialyForecastAbroadResponse$ResultBean$ForecastBean$DayBean;->icon:Ljava/lang/String;

    return-void
.end method
