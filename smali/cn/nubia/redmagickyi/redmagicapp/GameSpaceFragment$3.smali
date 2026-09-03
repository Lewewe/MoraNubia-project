.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$3;
.super Ljava/lang/Object;
.source "GameSpaceFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->updateNubiaAcctInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetUserId(Ljava/lang/String;)V
    .locals 2

    .line 252
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->model_name_prefix:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
