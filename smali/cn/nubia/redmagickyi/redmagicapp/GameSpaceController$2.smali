.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$2;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 372
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V
    .locals 0

    .line 375
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 376
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/network/NetworkUtils;->queryFriendliness(Ljava/lang/String;Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;)Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;

    .line 378
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateWebResource()V

    return-void
.end method
