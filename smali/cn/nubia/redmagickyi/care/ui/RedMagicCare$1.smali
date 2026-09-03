.class Lcn/nubia/redmagickyi/care/ui/RedMagicCare$1;
.super Ljava/lang/Object;
.source "RedMagicCare.java"

# interfaces
.implements Lcn/nubia/redmagickyi/care/ui/RedMagicCare$OnIgnoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->switchFragment(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/ui/RedMagicCare;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/ui/RedMagicCare;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare$1;->this$0:Lcn/nubia/redmagickyi/care/ui/RedMagicCare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ActivityIgnore()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare$1;->this$0:Lcn/nubia/redmagickyi/care/ui/RedMagicCare;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->Ignore()V

    return-void
.end method

.method public Commit()V
    .locals 1

    .line 123
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/RedMagicCare$1;->this$0:Lcn/nubia/redmagickyi/care/ui/RedMagicCare;

    const-class v0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/care/ui/RedMagicCare;->access$000(Lcn/nubia/redmagickyi/care/ui/RedMagicCare;Ljava/lang/Class;)V

    return-void
.end method

.method public onAnimationCallback(ZZ)V
    .locals 0

    return-void
.end method

.method public onHideFragment()V
    .locals 0

    return-void
.end method
