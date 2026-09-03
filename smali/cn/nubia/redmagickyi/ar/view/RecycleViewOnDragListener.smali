.class public Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;
.super Ljava/lang/Object;
.source "RecycleViewOnDragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$DragData;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->mHandler:Landroid/os/Handler;

    .line 22
    sget-object v0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    return-void
.end method

.method private handleDrag(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 13

    .line 44
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 52
    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 57
    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$DragData;

    .line 58
    iget-object v1, p2, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 59
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    if-ltz v1, :cond_b

    if-gez v0, :cond_3

    goto/16 :goto_7

    .line 69
    :cond_3
    iget-object v3, p2, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$DragData;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "image_pos"

    const/4 v5, 0x0

    if-ne v3, p1, :cond_8

    if-ne v1, v0, :cond_4

    return-void

    .line 76
    :cond_4
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->getDatas()Ljava/util/List;

    move-result-object p1

    if-ge v1, v0, :cond_5

    move p2, v1

    :goto_1
    if-ge p2, v0, :cond_6

    add-int/lit8 v3, p2, 0x1

    .line 79
    invoke-static {p1, p2, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move p2, v3

    goto :goto_1

    :cond_5
    move p2, v1

    :goto_2
    if-le p2, v0, :cond_6

    add-int/lit8 v3, p2, -0x1

    .line 83
    invoke-static {p1, p2, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 87
    :cond_6
    invoke-virtual {v2, v1, v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyItemMoved(II)V

    .line 88
    :goto_3
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->getDatas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_7

    .line 89
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->getDatas()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v4, v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->UpdateARLivedataBySql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 91
    :cond_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$1;

    invoke-direct {p2, p0, v2}, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$1;-><init>(Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    const-string p0, ""

    goto/16 :goto_6

    .line 101
    :cond_8
    iget-object v3, p2, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$DragData;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;

    .line 103
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->getDatas()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    .line 104
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->getDatas()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    .line 105
    iget-object v8, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v4, v10}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->UpdateARLivedataBySql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getIs_quick()I

    move-result v8

    const-string v9, "is_quick"

    const/4 v10, 0x1

    if-ne v8, v10, :cond_9

    .line 107
    invoke-virtual {v7, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs_quick(I)V

    .line 108
    iget-object v8, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v9, v12}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->UpdateARLivedataBySql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 110
    :cond_9
    invoke-virtual {v7, v10}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs_quick(I)V

    .line 111
    iget-object v8, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v11, v9, v12}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->UpdateARLivedataBySql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    :goto_4
    invoke-virtual {v7, v1}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setPos(I)V

    .line 114
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->getDatas()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 116
    iget-object v7, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v8, v4, v11}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->UpdateARLivedataBySql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getIs_quick()I

    move-result v4

    if-ne v4, v10, :cond_a

    .line 118
    invoke-virtual {v6, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs_quick(I)V

    .line 119
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v9, v5}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->UpdateARLivedataBySql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 121
    :cond_a
    invoke-virtual {v6, v10}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs_quick(I)V

    .line 122
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v9, v5}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->UpdateARLivedataBySql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    :goto_5
    invoke-virtual {v6, v0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setPos(I)V

    .line 125
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->getDatas()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 126
    invoke-virtual {v3, v1}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyItemChanged(I)V

    .line 127
    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/ar/adapter/ARImageAdapter;->notifyItemChanged(I)V

    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p2, p2, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$DragData;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 129
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 132
    :goto_6
    const-string p1, "RecycleViewOnDrag"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_7
    return-void
.end method

.method public static startDrag(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 136
    sput-object p0, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->mContext:Landroid/content/Context;

    .line 137
    new-instance p0, Landroid/view/View$DragShadowBuilder;

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 138
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$DragData;

    invoke-direct {v1, p1, p2}, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener$DragData;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p0, v1, p1}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    .line 29
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/ar/view/RecycleViewOnDragListener;->handleDrag(Landroid/view/View;Landroid/view/DragEvent;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
