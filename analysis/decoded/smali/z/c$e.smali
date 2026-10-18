.class public final Lz/c$e;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Lz/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Lg0/f;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg0/f;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz/c$e;->a:Lg0/f;

    .line 3
    iput p2, p0, Lz/c$e;->c:I

    .line 4
    iput p3, p0, Lz/c$e;->b:I

    .line 5
    iput-object p4, p0, Lz/c$e;->d:Ljava/lang/String;

    return-void
.end method
