.class Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;
.super Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;
.source "SkinExchangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/network/controller/BaseSkinExchangeController;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->handleExchangeSuccess(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)Z

    move-result p0

    return p0
.end method

.method private handleExchangeSuccess(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)Z
    .locals 2

    .line 144
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getExchangeType()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 145
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->queryTotalPoint()I

    move-result p0

    .line 146
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v0

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getAchievementPoint()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->updateTotalPoint(I)V

    .line 148
    :cond_0
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setExchangeType(I)V

    const/4 p0, 0x1

    .line 149
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setReceiveState(I)V

    .line 150
    const-string p1, "SkinExchangeManager"

    const-string p2, "skin exchange success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method protected onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receive skin onError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkinExchangeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    check-cast p1, Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V

    return-void
.end method

.method protected onSuccessInMainThread(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V
    .locals 6

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receive skin onSuccess, response = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SkinExchangeManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$000(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Z

    move-result v0

    .line 46
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {v2}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$100(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 47
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {v3}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$200(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->querySkin(I)Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    move-result-object v2

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 49
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;->getCode()I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v4, 0x232c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x232d

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 128
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 129
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto/16 :goto_1

    .line 64
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    new-instance v3, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getId()I

    move-result v4

    new-instance v5, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;

    invoke-direct {v5, p0, v2, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;-><init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V

    invoke-direct {v3, v4, v5}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;-><init>(ILcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;)V

    invoke-static {v1, v3}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$402(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    .line 93
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$400(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;->load()V

    goto/16 :goto_1

    .line 123
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 124
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/16 v2, 0x9e

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto/16 :goto_1

    .line 118
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 119
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/16 v2, 0x9d

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto/16 :goto_1

    .line 113
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 114
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/16 v2, 0x9c

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto/16 :goto_1

    .line 108
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 109
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/16 v2, 0x9b

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto/16 :goto_1

    .line 103
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 104
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/16 v2, 0x9a

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 98
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    new-instance v1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    const/16 v2, 0x99

    invoke-direct {v1, v2}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;-><init>(I)V

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 52
    :cond_2
    invoke-direct {p0, v2, v2}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->handleExchangeSuccess(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 54
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V

    goto :goto_1

    .line 57
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 58
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 133
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$600(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 134
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    .line 137
    :cond_5
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$700(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Z

    move-result p1

    if-eq v0, p1, :cond_6

    .line 139
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->cancel()V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x2af9
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onSuccessInMainThread(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    check-cast p1, Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->onSuccessInMainThread(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V

    return-void
.end method
