.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;
.super Ljava/lang/Object;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundManager"

.field private static albumDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

.field private static albumLandscapeDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

.field private static defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private static defaultLandscapeDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 21
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->getDefault()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 21
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->isPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;
    .locals 1

    .line 21
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;
    .locals 0

    .line 21
    sput-object p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    return-object p0
.end method

.method static synthetic access$300()Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;
    .locals 1

    .line 21
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumLandscapeDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;
    .locals 0

    .line 21
    sput-object p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumLandscapeDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    return-object p0
.end method

.method public static getBackground(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;)V
    .locals 3

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    if-eqz v0, :cond_1

    .line 29
    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;->onLoadingOver(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 33
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumLandscapeDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    if-eqz v0, :cond_1

    .line 34
    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;->onLoadingOver(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->AIAGENT_BACKGROUND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->isHasCustom()Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->getDefault()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;->onLoadingOver(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 43
    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$Callback;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V

    return-void
.end method

.method private static getDefault()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 118
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_fs_chat_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 124
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->defaultLandscapeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 125
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->morachat_fs_chat_bg_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->defaultLandscapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->defaultLandscapeDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0
.end method

.method public static isHasCustom()Z
    .locals 2

    .line 112
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->AIAGENT_BACKGROUND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isPortrait()Z
    .locals 2

    .line 133
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static setBackground(Ljava/lang/String;)V
    .locals 2

    .line 86
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    :cond_1
    sput-object v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    .line 95
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumLandscapeDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 98
    :cond_2
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumLandscapeDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 99
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumLandscapeDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    sget-object v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumLandscapeDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    :cond_3
    sput-object v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager;->albumLandscapeDrawable:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/BackgroundManager$AlbumBitmapDrawable;

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->AIAGENT_BACKGROUND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;Ljava/lang/String;)Z

    goto :goto_0

    .line 107
    :cond_4
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->AIAGENT_BACKGROUND:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;

    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method
