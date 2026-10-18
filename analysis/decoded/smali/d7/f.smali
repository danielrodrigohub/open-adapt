.class public abstract Ld7/f;
.super Ljava/lang/Object;
.source "NonceBasedStreamingAead.java"

# interfaces
.implements Ly6/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    new-instance v0, Ld7/k;

    invoke-direct {v0, p0, p1, p2}, Ld7/k;-><init>(Ld7/f;Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public final b(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ld7/j;

    invoke-direct {v0, p0, p1, p2}, Ld7/j;-><init>(Ld7/f;Ljava/io/InputStream;[B)V

    return-object v0
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()Ld7/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract h([B)Ld7/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
