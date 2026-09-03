.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$1;
.super Ljava/lang/Object;
.source "ViewStickyUtil.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;Landroid/app/Activity;)V
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

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    if-eqz p2, :cond_6

    .line 47
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;)I

    move-result v0

    iget v1, p1, Landroid/graphics/Insets;->bottom:I

    if-eq v0, v1, :cond_6

    .line 49
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;

    iget v1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->access$002(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;I)I

    .line 51
    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    if-lez v0, :cond_3

    .line 52
    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    iget p1, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, p1

    .line 53
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/InputMethodUtils;->getCurrentInputMethodApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 54
    const-string v1, "com.baidu.input_oem"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8a

    if-eqz v1, :cond_1

    .line 58
    :try_start_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    iget v1, p1, Landroid/graphics/Insets;->bottom:I

    iget p1, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    sub-int/2addr v0, v2

    goto :goto_2

    .line 66
    :cond_1
    const-string v1, "com.preff.kb.zx"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 70
    :try_start_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 72
    iget v1, p1, Landroid/graphics/Insets;->bottom:I

    iget p1, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x41

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 81
    :cond_4
    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;

    if-gtz v0, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_3
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;Ljava/lang/Integer;)V

    :cond_6
    return-object p2
.end method
