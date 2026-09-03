.class Lorg/libpag/PAGView$4;
.super Ljava/lang/Object;
.source "PAGView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libpag/PAGView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libpag/PAGView;


# direct methods
.method constructor <init>(Lorg/libpag/PAGView;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lorg/libpag/PAGView$4;->this$0:Lorg/libpag/PAGView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/libpag/PAGView$4;->this$0:Lorg/libpag/PAGView;

    invoke-static {v0}, Lorg/libpag/PAGView;->access$700(Lorg/libpag/PAGView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object p0, p0, Lorg/libpag/PAGView$4;->this$0:Lorg/libpag/PAGView;

    invoke-static {p0}, Lorg/libpag/PAGView;->access$300(Lorg/libpag/PAGView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 461
    :cond_0
    const-string p0, "PAGView"

    const-string v0, "AnimatorStartRunnable: PAGView is not attached to window"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
