.class public final Lc1/a;
.super Ljava/lang/Object;
.source "EncryptedFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/a$a;,
        Lc1/a$b;,
        Lc1/a$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ly6/n;


# direct methods
.method public constructor <init>(Ljava/io/File;Ly6/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc1/a;->a:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lc1/a;->b:Ly6/n;

    return-void
.end method
