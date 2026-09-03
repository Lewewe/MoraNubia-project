.class final Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedRunnable;
.super Ljava/lang/Object;
.source "OnItemSelectedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/loopview/LoopView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedRunnable;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedRunnable;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget-object v0, v0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->onItemSelectedListener:Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedRunnable;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->getSelectedItem()I

    move-result p0

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/care/loopview/OnItemSelectedListener;->onItemSelected(I)V

    return-void
.end method
