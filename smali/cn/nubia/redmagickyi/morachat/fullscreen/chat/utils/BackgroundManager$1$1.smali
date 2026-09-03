.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1$1;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;->onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;->val$callback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->access$000()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;->onLoadingOver(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
