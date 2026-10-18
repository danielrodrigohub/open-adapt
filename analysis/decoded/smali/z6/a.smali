.class public final Lz6/a;
.super Ljava/lang/Object;
.source "AndroidKeysetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/a$a;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Ly6/h;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz6/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lz6/a$a;->f:Ly6/h;

    .line 3
    iput-object p1, p0, Lz6/a;->a:Ly6/h;

    return-void
.end method
