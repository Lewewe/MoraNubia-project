.class Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;
.super Ljava/lang/Object;
.source "SaveARPhoto.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/util/SaveARPhoto;->SaveImage(Landroid/content/Context;Landroid/graphics/Bitmap;ILcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;

.field final synthetic val$ori:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/content/Context;ILcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$ori:I

    iput-object p4, p0, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$listener:Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    .line 38
    const-string v0, "is_pending"

    const-string v2, "SaveImage"

    .line 0
    const-string v3, "update contentValues: "

    const-string v4, "save success !"

    const-string v5, "save attributes error !"

    const-string v6, "save error !"

    const/4 v7, 0x0

    .line 43
    :try_start_0
    iget-object v8, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 44
    iget-object v9, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$context:Landroid/content/Context;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget v12, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$ori:I

    .line 44
    invoke-static {v9, v8, v10, v11, v12}, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto;->createContentValues(Landroid/content/Context;Landroid/graphics/Bitmap;JI)Landroid/content/ContentValues;

    move-result-object v8

    const/4 v9, 0x1

    .line 46
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    invoke-static {v8}, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto;->access$000(Landroid/content/ContentValues;)V

    .line 51
    iget-object v10, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 53
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " insert contentValues: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    .line 55
    iget-object v12, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "wr"

    invoke-virtual {v12, v10, v13}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    new-instance v13, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v13, v12}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 57
    :try_start_2
    iget-object v14, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v14, v15, v9, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 58
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->flush()V

    .line 59
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 60
    const-string v9, "orientation"

    iget v14, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$ori:I

    invoke-static {v14}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/CopyFileByUri;->getRotation(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    iget-object v0, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v10, v8, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    move-object v12, v7

    move-object v13, v12

    .line 67
    :goto_0
    iget-object v0, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v10}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/CopyFileByUri;->uriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v8, "Orientation"

    iget v9, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$ori:I

    invoke-static {v9}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/CopyFileByUri;->getRotationExif(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v0

    .line 74
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_1
    iget-object v0, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$context:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v11

    invoke-static {v0, v5, v7, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$listener:Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;

    if-eqz v0, :cond_1

    .line 79
    invoke-interface {v0, v10}, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;->onSaveFinished(Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    move-object v7, v13

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v7, v13

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v7, v13

    goto :goto_5

    .line 82
    :cond_2
    :try_start_5
    iget-object v0, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$listener:Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;

    if-eqz v0, :cond_3

    .line 83
    const-string v3, ""

    invoke-interface {v0, v3}, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;->onSaveFailed(Ljava/lang/String;)V

    .line 85
    :cond_3
    const-string v0, "save failture !null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v12, v7

    :goto_2
    if-eqz v7, :cond_4

    .line 96
    :try_start_6
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v12, :cond_7

    .line 99
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    .line 102
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v12, v7

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v12, v7

    .line 88
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, v1, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$1;->val$listener:Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;

    if-eqz v1, :cond_5

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;->onSaveFailed(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_5
    if-eqz v7, :cond_6

    .line 96
    :try_start_8
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_6
    if-eqz v12, :cond_7

    .line 99
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_7
    :goto_6
    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_7
    if-eqz v7, :cond_8

    .line 96
    :try_start_9
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :cond_8
    :goto_8
    if-eqz v12, :cond_9

    .line 99
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_a

    .line 102
    :goto_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    :cond_9
    :goto_a
    throw v1
.end method
