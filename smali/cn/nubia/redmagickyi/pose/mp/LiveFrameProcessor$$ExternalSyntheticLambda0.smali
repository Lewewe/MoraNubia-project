.class public final synthetic Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;

.field public final synthetic f$1:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda0;->f$1:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda0;->f$1:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    invoke-static {v0, p0, p1}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->lambda$setAsynchronousErrorListener$1(Landroid/os/Handler;Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;Ljava/lang/RuntimeException;)V

    return-void
.end method
