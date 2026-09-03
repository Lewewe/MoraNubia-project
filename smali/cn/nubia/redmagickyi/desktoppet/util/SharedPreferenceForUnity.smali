.class public Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;
.super Ljava/lang/Object;
.source "SharedPreferenceForUnity.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;,
        Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SharedPreferenceForUnity"

.field private static sSharedPrefsCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private callback:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->sp:Landroid/content/SharedPreferences;

    .line 27
    new-instance p1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->getAll()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->data:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Ljava/util/Map;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->data:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Z
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->isEnableWriteToFile()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->callback:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;

    return-object p0
.end method

.method public static declared-synchronized getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->getSharedPreferencesCacheLocked(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 32
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    if-nez v2, :cond_0

    .line 34
    new-instance v2, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-direct {v2, p0, p1, p2}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getSharedPreferencesCacheLocked(Landroid/content/Context;)Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->sSharedPrefsCache:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->sSharedPrefsCache:Landroid/util/ArrayMap;

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 45
    sget-object v0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->sSharedPrefsCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 48
    sget-object v1, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->sSharedPrefsCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private isEnableWriteToFile()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->callback:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;->isEnableWriteToFile()Z

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 108
    new-instance v0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;

    iget-object v1, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;-><init>(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 85
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->data:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public setCallback(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;)Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->callback:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;

    return-object p0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
