.class public Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$DragData;
.super Ljava/lang/Object;
.source "RecycleViewOnDragListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragData"
.end annotation


# instance fields
.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$DragData;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method
