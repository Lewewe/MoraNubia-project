.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$4;
.super Ljava/lang/Object;
.source "ChatSettingsActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->initBg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
