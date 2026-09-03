.class final Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;
.super Ljava/lang/Object;
.source "ModelImageAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NotifyItemChangedRunnable"
.end annotation


# instance fields
.field private nowPosition:I

.field private prevPosition:I

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p2, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;->prevPosition:I

    .line 122
    iput p3, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;->nowPosition:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;->prevPosition:I

    const-string v2, "playing"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;->this$1:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1$NotifyItemChangedRunnable;->nowPosition:I

    invoke-virtual {v0, p0, v2}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method
