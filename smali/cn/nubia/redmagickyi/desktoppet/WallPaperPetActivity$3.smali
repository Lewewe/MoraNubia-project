.class Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$3;
.super Ljava/lang/Object;
.source "WallPaperPetActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$3;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$3;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->access$400(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->setDesktopPetNeedRemindSetWallPaper(Z)V

    .line 279
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity$3;->this$0:Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;->access$500(Lcn/nubia/redmagickyi/desktoppet/WallPaperPetActivity;)V

    :cond_0
    return-void
.end method
