.class public Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;
.super Landroid/content/ContentProvider;
.source "RedmagickyiProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "cn.nubia.redmagickyi.RedmagickyiProvider"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isAlarmClockRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 45
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 50
    invoke-static {}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->values()[Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 51
    sget-object v4, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->getSubUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->ordinal()I

    move-result v3

    const-string v6, "cn.nubia.redmagickyi.RedmagickyiProvider"

    invoke-virtual {v4, v6, v5, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 25
    const-string v0, "RedmagickyiProvider"

    iput-object v0, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->isAlarmClockRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->mContext:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 2

    .line 122
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x8000

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    return-void
.end method

.method public static onAlarmClockLaunchChanged(Z)V
    .locals 3

    .line 126
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "isRunning"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->ALARM_CLOCK:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

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

    .line 111
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

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->mContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "query uri is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RedmagickyiProvider"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object p2, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    int-to-long p1, p1

    .line 66
    sget-object p3, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->ALARM_CLOCK:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->ordinal()I

    move-result p3

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    .line 67
    new-instance p1, Landroid/database/MatrixCursor;

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/String;

    const-string p4, "isRunning"

    const/4 p5, 0x0

    aput-object p4, p3, p5

    invoke-direct {p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 69
    iget-object p3, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->isAlarmClockRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->mContext:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-array p3, p2, [Ljava/lang/Class;

    const-class p4, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    aput-object p4, p3, p5

    invoke-static {p0, p5, p3}, Lcn/nubia/redmagickyi/util/ProcessUtils;->isProcessesRunning(Landroid/content/Context;Z[Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    move p0, p5

    .line 76
    :goto_0
    new-array p2, p2, [Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, p5

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "update uri is "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "RedmagickyiProvider"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object p3, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    int-to-long p3, p3

    .line 85
    sget-object v0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->SKIN:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->ordinal()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p2, :cond_3

    .line 86
    const-string p1, "skin"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 87
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 88
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p2

    new-instance p3, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$1;

    invoke-direct {p3, p0, p1}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$1;-><init>(Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;I)V

    invoke-virtual {p2, p3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 95
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->ALARM_CLOCK:Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider$URI;->ordinal()I

    move-result v0

    int-to-long v2, v0

    cmp-long p3, p3, v2

    if-nez p3, :cond_3

    if-eqz p2, :cond_2

    .line 96
    const-string p3, "isRunning"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 97
    iget-object p4, p0, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->isAlarmClockRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    invoke-virtual {p4, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/provider/RedmagickyiProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_3
    :goto_1
    return v1
.end method
