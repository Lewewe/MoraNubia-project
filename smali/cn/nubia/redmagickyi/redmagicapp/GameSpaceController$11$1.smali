.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11$1;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcom/zte/weather/sdk/model/api/GetWeatherWorker$WeatherDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 909
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/zte/weather/sdk/model/api/WeatherInfo;)V
    .locals 11

    if-eqz p1, :cond_0

    const/16 v0, 0xb

    if-ne v0, p1, :cond_12

    .line 914
    :cond_0
    invoke-virtual {p2}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->getCurrent()Lcom/zte/weather/sdk/model/api/WeatherDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/weather/sdk/model/api/WeatherDetail;->getWeatherType()I

    move-result v0

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "weather resultCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", weather type = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GameSpaceActivity"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result p1

    const/16 v2, 0x3e8

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x19

    const/16 v6, 0x12d

    const/16 v7, 0xc

    const/16 v8, 0x15

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-ne p1, v2, :cond_5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-lt v0, v10, :cond_2

    if-le v0, v7, :cond_4

    :cond_2
    if-lt v0, v8, :cond_3

    if-le v0, v5, :cond_4

    :cond_3
    if-ne v0, v6, :cond_11

    :cond_4
    :goto_0
    move v3, v4

    goto :goto_4

    :cond_5
    if-nez v0, :cond_6

    :goto_1
    move v3, v9

    goto :goto_4

    :cond_6
    const/4 p1, 0x4

    if-eq v0, p1, :cond_10

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    goto :goto_3

    :cond_7
    const/16 p1, 0x12

    if-eq v0, p1, :cond_f

    const/16 p1, 0x14

    if-eq v0, p1, :cond_f

    const/16 p1, 0x1d

    if-lt v0, p1, :cond_8

    const/16 p1, 0x3a

    if-gt v0, p1, :cond_8

    goto :goto_2

    :cond_8
    const/16 p1, 0xd

    if-lt v0, p1, :cond_9

    const/16 p1, 0x11

    if-le v0, p1, :cond_b

    :cond_9
    const/16 p1, 0x1a

    if-lt v0, p1, :cond_a

    const/16 p1, 0x1c

    if-le v0, p1, :cond_b

    :cond_a
    const/16 p1, 0x12e

    if-ne v0, p1, :cond_c

    :cond_b
    move v3, v10

    goto :goto_4

    :cond_c
    if-lt v0, v10, :cond_d

    if-le v0, v7, :cond_4

    :cond_d
    if-lt v0, v8, :cond_e

    if-le v0, v5, :cond_4

    :cond_e
    if-ne v0, v6, :cond_11

    goto :goto_0

    :cond_f
    :goto_2
    move v3, v2

    goto :goto_4

    :cond_10
    :goto_3
    move v3, p1

    .line 941
    :cond_11
    :goto_4
    invoke-virtual {p2}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->getCity()Ljava/lang/String;

    move-result-object p1

    .line 942
    invoke-virtual {p2}, Lcom/zte/weather/sdk/model/api/WeatherInfo;->getDistrict()Ljava/lang/String;

    move-result-object p2

    .line 944
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mMoodMotionMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Locale:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", weather type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", motion id:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 947
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 948
    const-string v1, "mood_type"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 949
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 p2, 0xbbf

    .line 950
    iput p2, p1, Landroid/os/Message;->what:I

    .line 951
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$11;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    return-void
.end method
