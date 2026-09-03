.class public final synthetic Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

.field public final synthetic f$1:Ljava/lang/RuntimeException;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;Ljava/lang/RuntimeException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda1;->f$0:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda1;->f$0:Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/RuntimeException;

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor;->lambda$setAsynchronousErrorListener$0(Lcn/nubia/redmagickyi/pose/mp/LiveFrameProcessor$ErrorListener;Ljava/lang/RuntimeException;)V

    return-void
.end method
