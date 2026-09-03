.class public Lcn/nubia/upgrade/a/d;
.super Ljava/lang/Object;
.source "IdCache.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/nubia/upgrade/a/d;->a:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/nubia/upgrade/a/d;->b:Z

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    if-eqz p4, :cond_2

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 7
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const/4 p2, 0x0

    .line 9
    :goto_0
    array-length v1, p3

    if-ge p2, v1, :cond_1

    .line 10
    aget-object v1, p3, p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 12
    :try_start_1
    aget-object v1, p3, p2

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 21
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/a/d;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_1
    :cond_1
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/a/d;->a(Ljava/io/Closeable;)V

    :cond_2
    return-void
.end method

.method a(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;Z)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 22
    array-length v0, p2

    if-lez v0, :cond_2

    if-eqz p3, :cond_2

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    .line 25
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    .line 26
    :goto_0
    :try_start_1
    array-length v1, p2

    if-ge p0, v1, :cond_1

    .line 27
    aget-object v1, p2, p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    aget-object v1, p2, p0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ltz v1, :cond_0

    .line 31
    :try_start_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_1
    :cond_1
    move p0, v0

    :catch_2
    :cond_2
    if-eqz p4, :cond_3

    if-eqz p1, :cond_3

    .line 44
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return p0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    if-eqz p4, :cond_2

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_2

    .line 4
    iget-boolean p0, p0, Lcn/nubia/upgrade/a/d;->b:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    move p0, v0

    .line 7
    :goto_0
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    :goto_1
    array-length p1, p3

    if-ge v0, p1, :cond_2

    .line 10
    aget-object p1, p3, v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    :try_start_0
    aget-object p1, p3, v0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method c(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    array-length v0, p3

    if-lez v0, :cond_3

    if-eqz p4, :cond_3

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_3

    .line 4
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 12
    :goto_0
    invoke-direct {p0, v1}, Lcn/nubia/upgrade/a/d;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_0
    move-object v2, v1

    :catch_1
    :goto_1
    invoke-direct {p0, v2}, Lcn/nubia/upgrade/a/d;->a(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    move v3, v2

    .line 14
    :goto_2
    array-length v4, p3

    if-ge v3, v4, :cond_2

    .line 15
    aget-object v4, p3, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 17
    :try_start_2
    aget-object v4, p4, v3

    if-eqz v4, :cond_0

    .line 18
    aget-object v5, p3, v3

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    .line 20
    :cond_0
    aget-object v4, p3, v3

    invoke-virtual {v0, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 29
    :cond_2
    :try_start_3
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 30
    :try_start_4
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/a/d;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_2
    move-exception p2

    move-object v1, p1

    goto :goto_5

    :catch_3
    move-exception p2

    move-object v1, p1

    goto :goto_4

    :catchall_3
    move-exception p2

    goto :goto_5

    :catch_4
    move-exception p2

    :goto_4
    const-string p1, "IdCache"

    .line 35
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to save to file "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 37
    invoke-direct {p0, v1}, Lcn/nubia/upgrade/a/d;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :goto_5
    invoke-direct {p0, v1}, Lcn/nubia/upgrade/a/d;->a(Ljava/io/Closeable;)V

    throw p2

    :cond_3
    :goto_6
    return-void
.end method

.method d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    array-length v0, p3

    if-lez v0, :cond_4

    if-eqz p4, :cond_4

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_4

    .line 4
    iget-boolean v0, p0, Lcn/nubia/upgrade/a/d;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    .line 7
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    :goto_1
    array-length p2, p3

    if-ge v1, p2, :cond_2

    .line 12
    aget-object p2, p3, v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 13
    aget-object p2, p3, v1

    aget-object v0, p4, v1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16
    :cond_2
    iget-boolean p0, p0, Lcn/nubia/upgrade/a/d;->a:Z

    if-eqz p0, :cond_3

    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "IdCache"

    const-string p1, "Failed to commit prefs"

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 22
    :cond_3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_2
    return-void
.end method
