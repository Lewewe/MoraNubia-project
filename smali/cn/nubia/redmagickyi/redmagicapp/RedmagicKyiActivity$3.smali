.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$3;
.super Ljava/lang/Object;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->changeFriendValue(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

.field final synthetic val$friendValue:I

.field final synthetic val$partName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 447
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$3;->val$partName:Ljava/lang/String;

    iput p3, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$3;->val$friendValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 3

    .line 451
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$3;->val$partName:Ljava/lang/String;

    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$3;->val$friendValue:I

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/FragmentBase;->mController:Lcn/nubia/redmagickyi/redmagicapp/ControllerBase;

    invoke-static {v0, p1, v1, p0, v2}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateFriendnessValue(Landroid/content/Context;ZLjava/lang/String;ILcn/nubia/redmagickyi/redmagicapp/ControllerBase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 454
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
