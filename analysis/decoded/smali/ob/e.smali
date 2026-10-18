.class public abstract Lob/e;
.super Ljava/lang/Error;
.source "OIDCAuthError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lob/e$e;,
        Lob/e$c;,
        Lob/e$a;,
        Lob/e$f;,
        Lob/e$d;,
        Lob/e$b;,
        Lob/e$g;
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lob/e;->h:Ljava/lang/String;

    iput-object p2, p0, Lob/e;->i:Ljava/lang/Throwable;

    return-void
.end method
