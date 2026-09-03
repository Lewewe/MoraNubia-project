.class Lcn/nubia/redmagickyi/network/NetworkUtils$1;
.super Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/network/NetworkUtils;->updateFriendValue(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$loginToken:Ljava/lang/String;

.field final synthetic val$partsName:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$1;->val$partsName:Ljava/lang/String;

    iput-object p2, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$1;->val$loginToken:Ljava/lang/String;

    iput p3, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$1;->val$value:I

    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 162
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetworkUtils;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected onSuccess(Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;)V
    .locals 6

    .line 115
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetworkUtils;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 116
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateFriendValue: partsName "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$1;->val$partsName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    .line 118
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getCode()I

    move-result v0

    const/4 v2, 0x1

    const-string v3, "online"

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getData()Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$1;->val$loginToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    const-string v2, "value_delta"

    iget v3, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$1;->val$value:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getData()Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;->getFriendliness_sum()I

    move-result v2

    const-string v3, "online_total"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getData()Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;->getLevel()I

    move-result v2

    const-string v3, "user_level"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 v1, 0xbbd

    .line 127
    iput v1, v0, Landroid/os/Message;->what:I

    .line 128
    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sendMessage(Landroid/os/Message;)V

    .line 129
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess: updateFriendValue score: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getData()Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;->getFriendliness_sum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getData()Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse$Data;->getLevel()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " value: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$1;->val$value:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getCode()I

    move-result v0

    const/16 v4, 0xfa3

    if-eq v0, v4, :cond_5

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getCode()I

    move-result v0

    const/16 v4, 0x1771

    if-ne v0, v4, :cond_2

    goto :goto_2

    .line 137
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getCode()I

    move-result p0

    const/16 v0, 0x1b5a

    if-ne p0, v0, :cond_3

    .line 139
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateFriendValue: part friendvalue upper limit, code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getCode()I

    move-result p0

    const/16 v0, 0x1b59

    if-ne p0, v0, :cond_4

    .line 141
    sget-boolean p0, Lcn/nubia/redmagickyi/network/NetConfig;->shouldDisplayFriendValueDayLimitNotice:Z

    if-eqz p0, :cond_4

    .line 142
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/16 v0, 0xbc9

    .line 143
    iput v0, p0, Landroid/os/Message;->what:I

    .line 144
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, p0, v4, v5}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 146
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "updateFriendValue: total friendvalue upper limit, code: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sput-boolean v1, Lcn/nubia/redmagickyi/network/NetConfig;->shouldDisplayFriendValueDayLimitNotice:Z

    .line 150
    :cond_4
    :goto_1
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    .line 151
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 152
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xbc7

    .line 153
    iput v0, p0, Landroid/os/Message;->what:I

    .line 154
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 155
    invoke-static {p0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->sendMessage(Landroid/os/Message;)V

    goto :goto_3

    .line 133
    :cond_5
    :goto_2
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateFriendValue: invalide token, code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;->getCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p1, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$1;->val$partsName:Ljava/lang/String;

    iget p0, p0, Lcn/nubia/redmagickyi/network/NetworkUtils$1;->val$value:I

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateFriendValueAgain(Ljava/lang/String;I)V

    :cond_6
    :goto_3
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

    .line 112
    check-cast p1, Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/NetworkUtils$1;->onSuccess(Lcn/nubia/redmagickyi/network/model/FriendValueOnlineResponse;)V

    return-void
.end method
