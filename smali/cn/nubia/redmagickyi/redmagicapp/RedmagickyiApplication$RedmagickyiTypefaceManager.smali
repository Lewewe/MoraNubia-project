.class Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;
.super Ljava/lang/Object;
.source "RedmagickyiApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RedmagickyiTypefaceManager"
.end annotation


# static fields
.field private static typefaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->typefaces:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Typeface;
    .locals 1

    .line 238
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/Typeface;
    .locals 1

    .line 238
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->getPowerChargeTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Landroid/graphics/Typeface;
    .locals 0

    .line 238
    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->getTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Z
    .locals 0

    .line 238
    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->isSameTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Z

    move-result p0

    return p0
.end method

.method private static declared-synchronized getPowerChargeTypeface()Landroid/graphics/Typeface;
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;

    monitor-enter v0

    .line 253
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_WIDGET:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->getTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getTypeface()Landroid/graphics/Typeface;
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;

    monitor-enter v0

    .line 242
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->getDisplayLanguageLocale()Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v1

    .line 243
    sget-object v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->Japan:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_HK:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_TW:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    sget-object v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->English:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_NONE:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->getTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 246
    :cond_2
    :goto_0
    :try_start_1
    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_YOUSHE:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->getTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 244
    :cond_3
    :goto_1
    :try_start_2
    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_MOCHIY:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->getTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Landroid/graphics/Typeface;
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;

    monitor-enter v0

    .line 257
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->typefaces:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    .line 259
    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_NONE:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    if-ne p0, v1, :cond_0

    .line 260
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 264
    :goto_0
    sget-object v2, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->typefaces:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized isSameTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Z
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;

    monitor-enter v0

    .line 271
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->typefaces:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$RedmagickyiTypefaceManager;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 273
    :catch_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0
.end method
