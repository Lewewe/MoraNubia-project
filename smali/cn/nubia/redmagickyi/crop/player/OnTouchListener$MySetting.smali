.class Lcn/nubia/redmagickyi/crop/player/OnTouchListener$MySetting;
.super Ljava/lang/Object;
.source "OnTouchListener.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/player/MediaSettings$ISettingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/player/OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySetting"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/player/OnTouchListener;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/crop/player/OnTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener$MySetting;->this$0:Lcn/nubia/redmagickyi/crop/player/OnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrightChange(I)V
    .locals 0

    return-void
.end method

.method public onVolumeChange(I)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener$MySetting;->this$0:Lcn/nubia/redmagickyi/crop/player/OnTouchListener;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->access$000(Lcn/nubia/redmagickyi/crop/player/OnTouchListener;)Lcn/nubia/redmagickyi/crop/base/BaseView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/base/BaseView;->onGestrueVolumeChange(I)V

    return-void
.end method
