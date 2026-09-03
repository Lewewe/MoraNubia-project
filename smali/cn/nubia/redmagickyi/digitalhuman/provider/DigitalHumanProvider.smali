.class public Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;
.super Landroid/content/ContentProvider;
.source "DigitalHumanProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "cn.nubia.redmagickyi.digitalhuman.settings.provider"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cursor:Landroid/database/Cursor;

.field private gson:Lcom/google/gson/Gson;

.field private hasMoreResourceBundleController:Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;

.field private final lock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 53
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 62
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->values()[Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 63
    sget-object v4, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->getSubUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->ordinal()I

    move-result v3

    const-string v6, "cn.nubia.redmagickyi.digitalhuman.settings.provider"

    invoke-virtual {v4, v6, v5, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 27
    const-string v0, "DigitalHumanProvider"

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->gson:Lcom/google/gson/Gson;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->cursor:Landroid/database/Cursor;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->lock:Ljava/lang/Object;

    .line 59
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->hasMoreResourceBundleController:Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;

    return-void
.end method

.method public static notifyChange(Landroid/net/Uri;)V
    .locals 3

    .line 197
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x8000

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    return-void
.end method

.method private recycleCursor()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->cursor:Landroid/database/Cursor;

    .line 107
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private registerContentObserver()V
    .locals 5

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    const-string v0, "content://cn.nubia.redmagickyi.RedmagickyiProvider/skin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    const-string v1, "content://cn.nubia.redmagickyi.RedmagickyiProvider/alarm_clock"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    new-instance v2, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, v1}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 94
    :try_start_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    const-string p0, "DigitalHumanProvider"

    const-string v0, "registerContentObserver for Redmagickyi failed. Maybe the app hasn\'t installed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 186
    const-string p0, ""

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->registerContentObserver()V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 112
    const-string p2, "DigitalHumanProvider"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "query uri is "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->recycleCursor()V

    .line 115
    iget-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->lock:Ljava/lang/Object;

    monitor-enter p2

    .line 116
    :try_start_0
    sget-object p3, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    int-to-long p3, p1

    .line 117
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->GET_SKIN_LIST:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->ordinal()I

    move-result p1

    int-to-long v0, p1

    cmp-long p1, p3, v0

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 118
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getSkinIdList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanSkinIDMapper;->output(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 119
    new-instance p3, Landroid/database/MatrixCursor;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/String;

    const-string v1, "list"

    aput-object v1, p4, v0

    const-string v0, "has_more"

    aput-object v0, p4, p5

    invoke-direct {p3, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->cursor:Landroid/database/Cursor;

    .line 120
    iget-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->hasMoreResourceBundleController:Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/digitalhuman/provider/HasMoreResourceBundleController;->hasMore()Z

    move-result p3

    .line 121
    iget-object p4, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->cursor:Landroid/database/Cursor;

    check-cast p4, Landroid/database/MatrixCursor;

    iget-object p5, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p5, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 122
    :cond_0
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->CURRENT_SKIN:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->ordinal()I

    move-result p1

    int-to-long v1, p1

    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    .line 123
    new-instance p1, Landroid/database/MatrixCursor;

    new-array p3, p5, [Ljava/lang/String;

    const-string p4, "skin"

    aput-object p4, p3, v0

    invoke-direct {p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->cursor:Landroid/database/Cursor;

    .line 124
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getCurrentSkin()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanSkinIDMapper;->output(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 126
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getDefaultSkinId()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanSkinIDMapper;->output(I)Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_1
    iget-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->cursor:Landroid/database/Cursor;

    check-cast p3, Landroid/database/MatrixCursor;

    new-array p4, p5, [Ljava/lang/String;

    aput-object p1, p4, v0

    invoke-virtual {p3, p4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 129
    :cond_2
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->LOAD_MORE:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->ordinal()I

    move-result p1

    int-to-long v1, p1

    cmp-long p1, p3, v1

    if-nez p1, :cond_3

    .line 130
    new-instance p1, Landroid/content/Intent;

    const-string p3, "intent.action.redmagickyi.main"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x10000000

    .line 131
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    iget-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 133
    :cond_3
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->ALARM_CLOCK:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->ordinal()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, p1

    cmp-long p1, p3, v1

    if-nez p1, :cond_4

    .line 135
    :try_start_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "content://cn.nubia.redmagickyi.RedmagickyiProvider/alarm_clock"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p4, p4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->cursor:Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catch_0
    :try_start_2
    const-string p1, "DigitalHumanProvider"

    const-string p3, "query alarm_clock for Redmagickyi failed. Maybe the app hasn\'t installed"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->cursor:Landroid/database/Cursor;

    if-nez p1, :cond_4

    .line 140
    new-instance p1, Landroid/database/MatrixCursor;

    new-array p3, p5, [Ljava/lang/String;

    const-string p4, "isRunning"

    aput-object p4, p3, v0

    invoke-direct {p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->cursor:Landroid/database/Cursor;

    .line 141
    move-object p3, p1

    check-cast p3, Landroid/database/MatrixCursor;

    new-array p3, p5, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v0

    invoke-virtual {p1, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 144
    :cond_4
    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->cursor:Landroid/database/Cursor;

    return-object p0

    :catchall_0
    move-exception p0

    .line 144
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "query uri is "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "DigitalHumanProvider"

    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    int-to-long p0, p0

    .line 152
    sget-object p4, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->CURRENT_SKIN:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->ordinal()I

    move-result p4

    int-to-long v0, p4

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    .line 153
    const-string p0, "skin"

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanSkinIDMapper;->input(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getSkinIdList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 158
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->changeSkin(IZ)Z

    if-eqz p2, :cond_0

    .line 159
    const-string p4, "change_main_skin"

    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 163
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 164
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://cn.nubia.redmagickyi.RedmagickyiProvider/skin"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    const-string p0, "update skin for Redmagickyi failed. Maybe the app hasn\'t installed"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
