.class Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->loadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 177
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->onLoadFailed()V

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/network/model/LoginResponse;)V
    .locals 1

    .line 168
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse;->getData()Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/LoginResponse$Data;->getToken_id()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->queryFriendliness(Ljava/lang/String;Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;)Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->access$602(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;)Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;

    goto :goto_0

    .line 171
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader$1;->this$1:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->onLoadFailed()V

    :goto_0
    return-void
.end method
