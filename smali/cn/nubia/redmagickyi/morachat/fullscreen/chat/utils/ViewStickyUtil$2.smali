.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$2;
.super Ljava/lang/Object;
.source "ViewStickyUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/ViewStickyUtil;Ljava/lang/Integer;)V

    return-void
.end method
