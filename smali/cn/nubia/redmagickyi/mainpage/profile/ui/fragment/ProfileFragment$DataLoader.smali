.class Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataLoader"
.end annotation


# instance fields
.field private isLogin:Ljava/lang/Boolean;

.field private loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

.field private queryFriendValueController:Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;

.field private storyBeansList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/StoryBeans;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/profile/util/StoryProfileManager;->getStoryProfileList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->storyBeansList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->cancel()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;)Ljava/lang/Boolean;
    .locals 0

    .line 145
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->isLogin:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;Ljava/lang/Boolean;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->init(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$602(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;)Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;
    .locals 0

    .line 145
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->queryFriendValueController:Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;

    return-object p1
.end method

.method private cancel()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->cancel()V

    .line 193
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->queryFriendValueController:Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;

    if-eqz p0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;->cancel()V

    :cond_1
    return-void
.end method

.method private init(Ljava/lang/Boolean;)V
    .locals 1

    .line 152
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->isLogin:Ljava/lang/Boolean;

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->onLoading()V

    if-eqz p1, :cond_1

    .line 156
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->loadList()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->onLoadFailed()V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadList()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->isLogin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader$1;-><init>(Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateLoginToken(Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;)Lcn/nubia/redmagickyi/network/manager/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->loginManager:Lcn/nubia/redmagickyi/network/manager/LoginManager;

    goto :goto_0

    .line 181
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->onLoadComplete()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getFriendnessLevel()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->isLogin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/model/StoryBeans;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->storyBeansList:Ljava/util/List;

    return-object p0
.end method

.method public onFailed()V
    .locals 0

    .line 206
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->onLoadFailed()V

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;->getFriendValue()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/model/QueryFriendValueResponse$Data;->getLevel()I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcn/nubia/redmagickyi/util/Utils;->setFriendness(Landroid/content/Context;III)V

    .line 201
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment$DataLoader;->this$0:Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/ui/fragment/ProfileFragment;->onLoadComplete()V

    return-void
.end method
