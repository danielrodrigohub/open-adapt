.class public final Lc7/e;
.super Ljava/lang/Object;
.source "StreamingAeadHelper.java"

# interfaces
.implements Ly6/n;


# instance fields
.field public a:Ly6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly6/i<",
            "Ly6/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly6/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/i<",
            "Ly6/n;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ly6/i;->b:Ly6/i$a;

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lc7/e;->a:Ly6/i;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing primary primitive."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc7/e;->a:Ly6/i;

    .line 2
    iget-object v0, v0, Ly6/i;->b:Ly6/i$a;

    .line 3
    iget-object v0, v0, Ly6/i$a;->a:Ljava/lang/Object;

    .line 4
    check-cast v0, Ly6/n;

    .line 5
    invoke-interface {v0, p1, p2}, Ly6/n;->a(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lc7/c;

    iget-object v1, p0, Lc7/e;->a:Ly6/i;

    invoke-direct {v0, v1, p1, p2}, Lc7/c;-><init>(Ly6/i;Ljava/io/InputStream;[B)V

    return-object v0
.end method
