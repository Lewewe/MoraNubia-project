.class Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask$1;
.super Ljava/lang/Object;
.source "AchievementNetworkManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/achievement/network/manager/AchievementLoadManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLoad error, reason is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$400()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;

    .line 148
    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;->onLoadError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 150
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->access$500(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_2

    .line 152
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$300(I)V

    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v0

    const/16 v1, 0x1006

    if-ne v0, v1, :cond_3

    .line 154
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->acct_expired:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$300(I)V

    goto :goto_2

    .line 155
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    .line 156
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$300(I)V

    .line 159
    :cond_4
    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->access$600(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
    .locals 4

    .line 136
    const-string v0, "onLoad success"

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$400()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLoad success, callback "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->access$500(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;)Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;->onLoadSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;Z)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask$1;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;->access$600(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$LoadListTask;)V

    return-void
.end method
