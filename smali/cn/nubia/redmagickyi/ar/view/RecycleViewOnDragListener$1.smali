.class Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$1;
.super Ljava/lang/Object;
.source "RecycleViewOnDragListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->handleDrag(Landroid/view/View;Landroid/view/DragEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;

.field final synthetic val$endAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)V
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

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$1;->this$0:Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;

    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$1;->val$endAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$1;->val$endAdapter:Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyDataSetChanged()V

    return-void
.end method
