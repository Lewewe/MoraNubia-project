.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$10;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->gotoLoginOrAccoutDetail()V
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

    .line 836
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$10;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 1

    .line 839
    const-string v0, "GameSpaceActivity"

    if-eqz p1, :cond_0

    .line 840
    const-string p1, "onClick: now already logged in"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$10;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 842
    const-string p1, "onClick: jump to account detail"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$10;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$10;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {p1, p0}, Lcn/nubia/accountsdk/fullclient/AccountFullClient;->jumptoAccountDetailActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 846
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$10;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    check-cast p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$800(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Landroid/app/Activity;)V

    .line 847
    const-string p0, "onClick: now not logged in "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
