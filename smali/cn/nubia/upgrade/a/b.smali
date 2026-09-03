.class public Lcn/nubia/upgrade/a/b;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/a/b$b;,
        Lcn/nubia/upgrade/a/b$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/upgrade/a/d;

.field private b:Ljava/lang/String;

.field private c:Lcn/nubia/upgrade/a/b$a;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:[Lcn/nubia/upgrade/a/b$b;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/nubia/upgrade/a/d;

    invoke-direct {v0}, Lcn/nubia/upgrade/a/d;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/a/b;->a:Lcn/nubia/upgrade/a/d;

    const-string v0, "device_ids_cache"

    .line 6
    iput-object v0, p0, Lcn/nubia/upgrade/a/b;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Lcn/nubia/upgrade/a/b$b;

    new-instance v1, Lcn/nubia/upgrade/a/f;

    invoke-direct {v1}, Lcn/nubia/upgrade/a/f;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcn/nubia/upgrade/a/b;->f:[Lcn/nubia/upgrade/a/b$b;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    .line 20
    const-string v0, "00000000"

    iput-object v0, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcn/nubia/upgrade/a/b;->l:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcn/nubia/upgrade/a/b;->m:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->d:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcn/nubia/upgrade/a/b;->e:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5

    .line 41
    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->f:[Lcn/nubia/upgrade/a/b$b;

    if-eqz v0, :cond_2

    .line 42
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 46
    invoke-interface {v3, p1, p2}, Lcn/nubia/upgrade/a/b$b;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-interface {v3, p1, p2}, Lcn/nubia/upgrade/a/b$b;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v4, 0x100

    .line 48
    invoke-direct {p0, v4}, Lcn/nubia/upgrade/a/b;->a(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 11

    .line 49
    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    const-string v0, "00000000"

    iput-object v0, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcn/nubia/upgrade/a/b;->j:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcn/nubia/upgrade/a/b;->l:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcn/nubia/upgrade/a/b;->m:Ljava/lang/String;

    const/4 v0, 0x7

    .line 57
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "device_ids_imeis"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "device_ids_meids"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "device_ids_serial"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "device_ids_udid"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "device_ids_grndid"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "device_ids_localid"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "device_ids_did"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 59
    new-array v0, v0, [Ljava/lang/String;

    const/16 v2, 0x80

    .line 60
    invoke-direct {p0, v2}, Lcn/nubia/upgrade/a/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->a:Lcn/nubia/upgrade/a/d;

    iget-object v10, p0, Lcn/nubia/upgrade/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2, p1, v10, v1, v0}, Lcn/nubia/upgrade/a/d;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->a:Lcn/nubia/upgrade/a/d;

    iget-object v10, p0, Lcn/nubia/upgrade/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2, p1, v10, v1, v0}, Lcn/nubia/upgrade/a/d;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    :goto_0
    aget-object p1, v0, v3

    iget-object v1, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    invoke-static {p1, v1, v4}, Lcn/nubia/upgrade/a/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 66
    aget-object p1, v0, v4

    iget-object v1, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-static {p1, v1, v4}, Lcn/nubia/upgrade/a/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 68
    aget-object p1, v0, v5

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    .line 73
    :cond_1
    aget-object p1, v0, v6

    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->j:Ljava/lang/String;

    .line 75
    aget-object p1, v0, v7

    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    .line 77
    aget-object p1, v0, v8

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->l:Ljava/lang/String;

    .line 82
    :cond_2
    aget-object p1, v0, v9

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->m:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private a(I)Z
    .locals 0

    .line 85
    iget p0, p0, Lcn/nubia/upgrade/a/b;->e:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x7

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "device_ids_imeis"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "device_ids_meids"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "device_ids_serial"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "device_ids_udid"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "device_ids_grndid"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "device_ids_localid"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "device_ids_did"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    .line 5
    invoke-static {v2}, Lcn/nubia/upgrade/a/e;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-static {v2}, Lcn/nubia/upgrade/a/e;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->j:Ljava/lang/String;

    aput-object v2, v0, v6

    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    aput-object v2, v0, v7

    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->l:Ljava/lang/String;

    aput-object v2, v0, v8

    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->m:Ljava/lang/String;

    aput-object v2, v0, v9

    const/16 v2, 0x80

    .line 8
    invoke-direct {p0, v2}, Lcn/nubia/upgrade/a/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->a:Lcn/nubia/upgrade/a/d;

    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2, p1, p0, v1, v0}, Lcn/nubia/upgrade/a/d;->c(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->a:Lcn/nubia/upgrade/a/d;

    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2, p1, p0, v1, v0}, Lcn/nubia/upgrade/a/d;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x8

    .line 16
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 20
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->j:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 v0, 0x4

    .line 24
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    .line 26
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/a/b;->a(I)Z

    move-result v0

    const/16 v1, 0x20

    .line 27
    invoke-direct {p0, v1}, Lcn/nubia/upgrade/a/b;->a(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 28
    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "#"

    const/4 v5, 0x0

    if-lez v2, :cond_4

    .line 29
    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v0, :cond_3

    .line 33
    invoke-static {v2, v3}, Lcn/nubia/upgrade/a/e;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2

    .line 35
    :cond_4
    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 36
    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-eqz v0, :cond_6

    .line 40
    invoke-static {v2, v3}, Lcn/nubia/upgrade/a/e;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    :cond_6
    return-object v2

    .line 44
    :cond_7
    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 45
    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    return-object p0

    .line 48
    :cond_8
    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->l:Ljava/lang/String;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const-string p0, "00000000"

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0x40

    .line 1
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/a/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1}, Lcn/nubia/upgrade/a/c;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3
    invoke-static {}, Lcn/nubia/upgrade/a/c;->a()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    .line 10
    :cond_0
    iget-object p1, p0, Lcn/nubia/upgrade/a/b;->l:Ljava/lang/String;

    const-string v0, "00000000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcn/nubia/upgrade/a/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object p1, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    .line 15
    :cond_1
    invoke-static {p1}, Lcn/nubia/upgrade/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->l:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/nubia/upgrade/a/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5
    invoke-direct {p0, p1, v1}, Lcn/nubia/upgrade/a/b;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get remote ids "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DeviceId"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_6

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x6

    .line 12
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "device_ids_imeis"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "device_ids_meids"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "device_ids_serial"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "device_ids_udid"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "device_ids_grndid"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "device_ids_altid"

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 14
    new-array v1, v1, [Ljava/lang/String;

    .line 15
    iget-object v3, p0, Lcn/nubia/upgrade/a/b;->a:Lcn/nubia/upgrade/a/d;

    invoke-virtual {v3, p1, v2, v1, v5}, Lcn/nubia/upgrade/a/d;->a(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;Z)Z

    const/16 p1, 0x40

    .line 16
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/a/b;->a(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    aget-object p1, v1, v4

    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    invoke-static {p1, v2, v5}, Lcn/nubia/upgrade/a/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 19
    aget-object p1, v1, v5

    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-static {p1, v2, v5}, Lcn/nubia/upgrade/a/e;->a(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 21
    aget-object p1, v1, v6

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 23
    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    .line 27
    :cond_1
    aget-object p1, v1, v7

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 29
    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->j:Ljava/lang/String;

    .line 32
    :cond_2
    aget-object p1, v1, v8

    .line 34
    invoke-static {p1}, Lcn/nubia/upgrade/a/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p1, v0

    .line 37
    :cond_3
    invoke-direct {p0, v5}, Lcn/nubia/upgrade/a/b;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 43
    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    .line 46
    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->c:Lcn/nubia/upgrade/a/b$a;

    if-eqz p0, :cond_5

    .line 47
    invoke-interface {p0, v0, p1, v5}, Lcn/nubia/upgrade/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 54
    :cond_4
    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->l:Ljava/lang/String;

    const-string v3, "00000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 56
    iput-object p1, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    .line 57
    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->c:Lcn/nubia/upgrade/a/b$a;

    if-eqz p0, :cond_5

    .line 58
    invoke-interface {p0, v0, p1, v5}, Lcn/nubia/upgrade/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    :cond_5
    :goto_1
    aget-object p0, v1, v9

    nop

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-static {v0}, Lcn/nubia/upgrade/a/e;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 7

    if-eqz p1, :cond_5

    if-eqz p2, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/a/b;->a(Landroid/content/Context;)V

    .line 9
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    iget-object v1, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcn/nubia/upgrade/a/b;->j:Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    .line 14
    iget-object v4, p0, Lcn/nubia/upgrade/a/b;->l:Ljava/lang/String;

    .line 15
    iget-object v5, p0, Lcn/nubia/upgrade/a/b;->m:Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/a/b;->d(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/a/b;->c(Landroid/content/Context;)V

    .line 21
    iget-object v6, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 22
    iget-object v6, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 24
    :cond_1
    iget-object v6, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 25
    iget-object v6, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 28
    :cond_2
    invoke-direct {p0}, Lcn/nubia/upgrade/a/b;->c()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/upgrade/a/b;->m:Ljava/lang/String;

    .line 30
    iget-object v6, p0, Lcn/nubia/upgrade/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcn/nubia/upgrade/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcn/nubia/upgrade/a/b;->i:Ljava/lang/String;

    .line 31
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcn/nubia/upgrade/a/b;->j:Ljava/lang/String;

    .line 32
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    .line 33
    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcn/nubia/upgrade/a/b;->l:Ljava/lang/String;

    .line 34
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcn/nubia/upgrade/a/b;->m:Ljava/lang/String;

    .line 35
    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 36
    :cond_3
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/a/b;->b(Landroid/content/Context;)V

    .line 39
    :cond_4
    iget-object p1, p0, Lcn/nubia/upgrade/a/b;->c:Lcn/nubia/upgrade/a/b$a;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/nubia/upgrade/a/b;->m:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 40
    iget-object p1, p0, Lcn/nubia/upgrade/a/b;->c:Lcn/nubia/upgrade/a/b$a;

    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->m:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p1, v5, p0, p2}, Lcn/nubia/upgrade/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/upgrade/a/b;->k:Ljava/lang/String;

    return-object p0
.end method
