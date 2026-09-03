.class Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$7;
.super Ljava/lang/Object;
.source "TechnologyCenterLayer.java"

# interfaces
.implements Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->onSwitchCheckTouch(Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;ILandroid/view/MotionEvent;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

.field final synthetic val$view:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 530
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$7;->val$view:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 534
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$700(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->setDesktopPetNeedRemindSetWallPaper(Z)V

    .line 535
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$7;->val$view:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setPressing(Z)V

    .line 536
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$7;->val$view:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
