.class Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$9;
.super Ljava/lang/Object;
.source "ScenceCareSetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 644
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$9;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 647
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$9;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$900(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
