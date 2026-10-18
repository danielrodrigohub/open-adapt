.class public final Lc/b$b;
.super Lc/a$a;
.source "ResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lc/b;


# direct methods
.method public constructor <init>(Lc/b;)V
    .locals 0

    iput-object p1, p0, Lc/b$b;->b:Lc/b;

    invoke-direct {p0}, Lc/a$a;-><init>()V

    return-void
.end method
