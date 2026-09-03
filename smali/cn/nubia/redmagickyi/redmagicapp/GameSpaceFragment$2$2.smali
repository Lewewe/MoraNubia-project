.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2$2;
.super Ljava/lang/Object;
.source "GameSpaceFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->onComplete(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2$2;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetUserId(Ljava/lang/String;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2$2;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2$2;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->model_name_prefix:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p1, p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
