.class Lorg/libpag/PAGView$3;
.super Ljava/lang/Object;
.source "PAGView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libpag/PAGView;->updateView()V
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

    .line 324
    iput-object p1, p0, Lorg/libpag/PAGView$3;->this$0:Lorg/libpag/PAGView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 328
    iget-object v0, p0, Lorg/libpag/PAGView$3;->this$0:Lorg/libpag/PAGView;

    monitor-enter v0

    .line 329
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/libpag/PAGView$3;->this$0:Lorg/libpag/PAGView;

    invoke-static {p0}, Lorg/libpag/PAGView;->access$600(Lorg/libpag/PAGView;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 330
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libpag/PAGView$PAGFlushListener;

    .line 332
    invoke-interface {v0}, Lorg/libpag/PAGView$PAGFlushListener;->onFlush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 330
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
