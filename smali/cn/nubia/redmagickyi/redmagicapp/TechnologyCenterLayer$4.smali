.class Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$4;
.super Ljava/lang/Object;
.source "TechnologyCenterLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->updateTechCenterUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

.field final synthetic val$finalI2:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;I)V
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

    .line 353
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    iput p2, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$4;->val$finalI2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$4;->this$0:Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;->access$200(Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/redmagicapp/TechnologyCenterLayer$4;->val$finalI2:I

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->notifyItemChanged(I)V

    return-void
.end method
