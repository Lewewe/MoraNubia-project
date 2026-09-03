.class Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$2;
.super Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;
.source "ARImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->initView(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/ar/view/BaseOnRecyclerItemClickListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->performHapticFeedback(I)Z

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog$2;->this$0:Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;->access$000(Lcn/nubia/redmagickyi/ar/dialog/ARImageDialog;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->startDrag(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
