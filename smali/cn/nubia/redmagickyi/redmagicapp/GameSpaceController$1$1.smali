.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1$1;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1;->onReceive(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->settings_shortcut_toast_success:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    :cond_0
    return-void
.end method
